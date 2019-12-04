function varargout = w_output_euler(varargin)
% W_OUTPUT_EULER MATLAB code for w_output_euler.fig
%      W_OUTPUT_EULER, by itself, creates a new W_OUTPUT_EULER or raises the existing
%      singleton*.
%
%      H = W_OUTPUT_EULER returns the handle to a new W_OUTPUT_EULER or the handle to
%      the existing singleton*.
%
%      W_OUTPUT_EULER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in W_OUTPUT_EULER.M with the given input arguments.
%
%      W_OUTPUT_EULER('Property','Value',...) creates a new W_OUTPUT_EULER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before w_output_euler_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to w_output_euler_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help w_output_euler

% Last Modified by GUIDE v2.5 03-Dec-2019 19:26:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @w_output_euler_OpeningFcn, ...
                   'gui_OutputFcn',  @w_output_euler_OutputFcn, ...
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


% --- Executes just before w_output_euler is made visible.
function w_output_euler_OpeningFcn(hObject, eventdata, handles, varargin)
close w_output1_1
global Tr;
set(handles.uitable2,'Data',Tr);
global eulZYX;
set(handles.uitable1,'Data',eulZYX);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to w_output_euler (see VARARGIN)

% Choose default command line output for w_output_euler
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes w_output_euler wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = w_output_euler_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

topics_gui
close w_output_euler
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
