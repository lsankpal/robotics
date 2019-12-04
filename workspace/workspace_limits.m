function varargout = workspace_limits(varargin)
% WORKSPACE_LIMITS MATLAB code for workspace_limits.fig
%      WORKSPACE_LIMITS, by itself, creates a new WORKSPACE_LIMITS or raises the existing
%      singleton*.
%
%      H = WORKSPACE_LIMITS returns the handle to a new WORKSPACE_LIMITS or the handle to
%      the existing singleton*.
%
%      WORKSPACE_LIMITS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WORKSPACE_LIMITS.M with the given input arguments.
%
%      WORKSPACE_LIMITS('Property','Value',...) creates a new WORKSPACE_LIMITS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before workspace_limits_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to workspace_limits_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help workspace_limits

% Last Modified by GUIDE v2.5 30-Nov-2019 15:25:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @workspace_limits_OpeningFcn, ...
                   'gui_OutputFcn',  @workspace_limits_OutputFcn, ...
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


% --- Executes just before workspace_limits is made visible.
function workspace_limits_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to workspace_limits (see VARARGIN)

% Choose default command line output for workspace_limits
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global ns;
set(handles.uitable1,'Data',cell(ns,2));
set(handles.uitable1, 'ColumnEditable', [true, true,]);

% UIWAIT makes workspace_limits wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = workspace_limits_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
tabledata=(get(handles.uitable1,'data'));
global ML;
global ml;
ML=cell2mat(tabledata(:,1))
ml=cell2mat(tabledata(:,1))
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
topics_gui
close workspace_limits
