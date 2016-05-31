function mpc = case5
%CASE5  Power flow data for modified 5 bus, 5 gen case based on PJM 5-bus system
%   Please see CASEFORMAT for details on the case file format.
%
%   Based on data from ...
%     F.Li and R.Bo, "Small Test Systems for Power System Economic Studies",
%     Proceedings of the 2010 IEEE Power & Energy Society General Meeting

%   Created by Rui Bo in 2006, modified in 2010, 2014.
%   Distributed with permission.

%   MATPOWER
%   $Id: case5.m 2408 2014-10-22 20:41:33Z ray $

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1	0	230	1	1.1	0.9;
	2	1	60	35	0	0	1	1	0	230	1	1.1	0.9;
	3	1	70	42	0	15	1	1	0	230	1	1.1	0.9;
	4	1	80	50	0	18	1	1	0	230	1	1.1	0.9;
	5	2	65	36	0	0	1	1	0	230	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	4500	-4500	1.01	100	1	0	0	0	0	0	0	0	0	0	0	0	0	0;
	5	190	0	4500	-4500	1	100	1	190	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.0108	0.0649	0.066	400	400	400	0	0	1	-360	360;
	1	4	0.0235	0.0941	0.04	400	400	400	0	0	1	-360	360;
	2	5	0.0118	0.0471	0.07	400	400	400	0	0	1	-360	360;
	3	5	0.0147	0.0588	0.08	400	400	400	0	0	1	-360	360;
	4	5	0.0118	0.0529	0.06	400	400	400	0	0	1	-360	360;
	3	2	0.00	0.04	0.00	400	400	400	1/0.975	0	1	-360	360;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	2	14	0;
	2	0	0	2	15	0;
	2	0	0	2	30	0;
	2	0	0	2	40	0;
	2	0	0	2	10	0;
];
