
function varargout = Window1_1_1(varargin)
% WINDOW1_1_1 MATLAB code for Window1_1_1.fig
%      WINDOW1_1_1, by itself, creates a new WINDOW1_1_1 or raises the existing
%      singleton*.
%
%      H = WINDOW1_1_1 returns the handle to a new WINDOW1_1_1 or the handle to
%      the existing singleton*.
%
%      WINDOW1_1_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WINDOW1_1_1.M with the given input arguments.
%
%      WINDOW1_1_1('Property','Value',...) creates a new WINDOW1_1_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Window1_1_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Window1_1_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Window1_1_1

% Last Modified by GUIDE v2.5 03-Dec-2019 09:09:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Window1_1_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Window1_1_1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Window1_1_1 is made visible.
function Window1_1_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Window1_1_1 (see VARARGIN)

% Choose default command line output for Window1_1_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% set the table size to be 2x2


global ns;

set(handles.uitable2,'Data',cell(ns,4));
set(handles.uitable2, 'ColumnEditable', [true, true, true, true]);

% UIWAIT makes Window1_1_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Window1_1_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure

varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global theta;
global a;
global d
global alpha;
%global tabledata;
global Td;
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tabledata=(get(handles.uitable2,'data'));

theta=tabledata(:,1);
theta = str2double(theta);
d=tabledata(:,2);
d = str2double(d);
alpha=tabledata(:,3);
alpha = str2double(alpha);
a=tabledata(:,4);
a = str2double(a);
Td=str2double(tabledata);
 %writetable(Td,'D:\MS RAS EE\Fall 2019\Mae 547 Modelling of robots\project\D_H_user.txt');
 %{
 setappdata(Window1_1_1,'Td',Td);
 setappdata(Window1_1_1,'theta',theta);
 setappdata(Window1_1_1,'alpha',alpha);
 setappdata(Window1_1_1,'d',d1);
 setappdata(Window1_1_1,'a',a1);
 %}
 topics_gui
 close Window1_1_1

 


% --- Executes when entered data in editable cell(s) in uitable2.
function uitable2_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Window1_1
close Window1_1_1
function uitable2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
