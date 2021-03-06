-- -------------------------------------------------------------------------------
-- This file has been automatically generated by the Caph compiler (version 2.8.4d)
-- from file main.cph, on 2019-05-08 at 15:51:51, by <unknown>
-- For more information, see : http://caph.univ-bpclermont.fr
-- -------------------------------------------------------------------------------

library ieee,caph,work;
use ieee.std_logic_1164.all;
use caph.core.all;
use caph.data_types.all;
use ieee.numeric_std.all;
use work.all;
use work.extfns.all;
use work.edgeDetectionTutorial_globals.all;

entity LineBuffer is
   port (
    soi_empty: in std_logic;
    soi: in std_logic_vector(15 downto 0);
    soi_rd: out std_logic;
    inY_empty: in std_logic;
    inY: in std_logic_vector(8 downto 0);
    inY_rd: out std_logic;
    line_full: in std_logic;
    line: out std_logic_vector(8 downto 0);
    line_wr: out std_logic;
    clock: in std_logic;
    reset: in std_logic
    );
end LineBuffer;

architecture FSM of LineBuffer is
    type t_enum2 is (WAIT_W,WAIT_H,WORK);
    signal lineBuffer : array1024_u9;
    signal n_lineBuffer : array1024_u9;
    signal en_lineBuffer : array1024_b;
    signal y : unsigned(15 downto 0);
    signal n_y : unsigned(15 downto 0);
    signal en_y : boolean;
    signal x : unsigned(15 downto 0);
    signal n_x : unsigned(15 downto 0);
    signal en_x : boolean;
    signal height : unsigned(15 downto 0);
    signal n_height : unsigned(15 downto 0);
    signal en_height : boolean;
    signal width : unsigned(15 downto 0);
    signal n_width : unsigned(15 downto 0);
    signal en_width : boolean;
    signal state : t_enum2;
    signal n_state : t_enum2;
    signal en_state : boolean;
begin
  comb: process(soi, soi_empty, inY, inY_empty, line_full, state, width, height, x, y, lineBuffer)
    variable p_din : unsigned(8 downto 0);
    variable p_h : unsigned(15 downto 0);
    variable p_w : unsigned(15 downto 0);
    variable n_lineBuffer_tmp : array1024_u9;
    variable en_lineBuffer_tmp : array1024_b;
  begin
    -- soi.rdy, state=WAIT_W / p_w=soi, state:=WAIT_H, width:=p_w
    if soi_empty='0' and state=WAIT_W then
      p_w := from_std_logic_vector(soi,16);
      soi_rd <= '1';
      n_state <= WAIT_H;
      en_state <= true;
      n_width <= p_w;
      en_width <= true;
      line <= (others => 'X');
      line_wr <= '0';
      inY_rd <= '0';
      n_lineBuffer <= lineBuffer;
      en_lineBuffer <= (others => false);
      n_y <= y;
      en_y <= false;
      n_x <= x;
      en_x <= false;
      n_height <= height;
      en_height <= false;
    -- soi.rdy, state=WAIT_H / p_h=soi, state:=WORK, height:=p_h
    elsif soi_empty='0' and state=WAIT_H then
      p_h := from_std_logic_vector(soi,16);
      soi_rd <= '1';
      n_state <= WORK;
      en_state <= true;
      n_height <= p_h;
      en_height <= true;
      line <= (others => 'X');
      line_wr <= '0';
      inY_rd <= '0';
      n_lineBuffer <= lineBuffer;
      en_lineBuffer <= (others => false);
      n_y <= y;
      en_y <= false;
      n_x <= x;
      en_x <= false;
      n_width <= width;
      en_width <= false;
    -- inY.rdy, state=WORK, x = width + 1 && y = height + 1, line.rdy / p_din=inY, state:=WAIT_W, x:=0, y:=0, wr(line,(lineBuffer[x] : unsigned<9>)), lineBuffer[x]:=p_din
    elsif inY_empty='0' and state=WORK and (((x) = ((width) + (to_unsigned(1,16)))) AND ((y) = ((height) + (to_unsigned(1,16))))) and line_full='0' then
      p_din := from_std_logic_vector(inY,9);
      inY_rd <= '1';
      n_state <= WAIT_W;
      en_state <= true;
      n_x <= to_unsigned(0,16);
      en_x <= true;
      n_y <= to_unsigned(0,16);
      en_y <= true;
      line <= std_logic_vector(conv_unsigned(lineBuffer(to_integer(x)),9));
      line_wr <= '1';
      soi_rd <= '0';
      n_height <= height;
      en_height <= false;
      n_width <= width;
      en_width <= false;
      n_lineBuffer_tmp := lineBuffer;
      en_lineBuffer_tmp := (others => false);
      n_lineBuffer_tmp(to_integer(x)) := p_din;
      en_lineBuffer_tmp(to_integer(x)) := true;
      n_lineBuffer <= n_lineBuffer_tmp;
      en_lineBuffer <= en_lineBuffer_tmp;
    -- inY.rdy, state=WORK, x = width + 1, line.rdy / p_din=inY, state:=WORK, x:=0, y:=y+1, wr(line,(lineBuffer[x] : unsigned<9>)), lineBuffer[x]:=p_din
    elsif inY_empty='0' and state=WORK and ((x) = ((width) + (to_unsigned(1,16)))) and line_full='0' then
      p_din := from_std_logic_vector(inY,9);
      inY_rd <= '1';
      n_state <= WORK;
      en_state <= true;
      n_x <= to_unsigned(0,16);
      en_x <= true;
      n_y <= (y) + (to_unsigned(1,16));
      en_y <= true;
      line <= std_logic_vector(conv_unsigned(lineBuffer(to_integer(x)),9));
      line_wr <= '1';
      soi_rd <= '0';
      n_height <= height;
      en_height <= false;
      n_width <= width;
      en_width <= false;
      n_lineBuffer_tmp := lineBuffer;
      en_lineBuffer_tmp := (others => false);
      n_lineBuffer_tmp(to_integer(x)) := p_din;
      en_lineBuffer_tmp(to_integer(x)) := true;
      n_lineBuffer <= n_lineBuffer_tmp;
      en_lineBuffer <= en_lineBuffer_tmp;
    -- inY.rdy, state=WORK, line.rdy / p_din=inY, state:=WORK, x:=x+1, wr(line,(lineBuffer[x] : unsigned<9>)), lineBuffer[x]:=p_din
    elsif inY_empty='0' and state=WORK and line_full='0' then
      p_din := from_std_logic_vector(inY,9);
      inY_rd <= '1';
      n_state <= WORK;
      en_state <= true;
      n_x <= (x) + (to_unsigned(1,16));
      en_x <= true;
      line <= std_logic_vector(conv_unsigned(lineBuffer(to_integer(x)),9));
      line_wr <= '1';
      soi_rd <= '0';
      n_y <= y;
      en_y <= false;
      n_height <= height;
      en_height <= false;
      n_width <= width;
      en_width <= false;
      n_lineBuffer_tmp := lineBuffer;
      en_lineBuffer_tmp := (others => false);
      n_lineBuffer_tmp(to_integer(x)) := p_din;
      en_lineBuffer_tmp(to_integer(x)) := true;
      n_lineBuffer <= n_lineBuffer_tmp;
      en_lineBuffer <= en_lineBuffer_tmp;
    else
      soi_rd <= '0';
      inY_rd <= '0';
      line_wr <= '0';
      line <= (others => 'X');
      en_lineBuffer <= (others => false);
      en_y <= false;
      en_x <= false;
      en_height <= false;
      en_width <= false;
      en_state <= false;
      n_lineBuffer <= lineBuffer;
      n_y <= y;
      n_x <= x;
      n_height <= height;
      n_width <= width;
      n_state <= state;
    end if;
  end process;
  seq: process(clock, reset)
  begin
    if (reset='0') then
      y <= "0000000000000000";
      x <= "0000000000000000";
      height <= "0000000000000000";
      width <= "0000000000000000";
      state <= WAIT_W;
    elsif rising_edge(clock) then
      for i1 in 0 to 1023 loop
        if ( en_lineBuffer(i1) ) then
          lineBuffer(i1) <= n_lineBuffer(i1) after 1 ns;
        end if;
      end loop;
      if ( en_y ) then
        y <= n_y after 1 ns;
      end if;
      if ( en_x ) then
        x <= n_x after 1 ns;
      end if;
      if ( en_height ) then
        height <= n_height after 1 ns;
      end if;
      if ( en_width ) then
        width <= n_width after 1 ns;
      end if;
      if ( en_state ) then
        state <= n_state after 1 ns;
      end if;
    end if;
  end process;
end FSM;
