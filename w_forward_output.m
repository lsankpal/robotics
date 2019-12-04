function varargout = w_forward_output(varargin)
% W_FORWARD_OUTPUT MATLAB code for w_forward_output.fig
%      W_FORWARD_OUTPUT, by itself, creates a new W_FORWARD_OUTPUT or raises the existing
%      singleton*.
%
%      H = W_FORWARD_OUTPUT returns the handle to a new W_FORWARD_OUTPUT or the handle to
%      the existing singleton*.
%
%      W_FORWARD_OUTPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in W_FORWARD_OUTPUT.M with the given input arguments.
%
%      W_FORWARD_OUTPUT('Property','Value',...) creates a new W_FORWARD_OUTPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before w_forward_output_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to w_forward_output_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help w_forward_output

% Last Modified by GUIDE v2.5 03-Dec-2019 22:49:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @w_forward_output_OpeningFcn, ...
                   'gui_OutputFcn',  @w_forward_output_OutputFcn, ...
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


% --- Executes just before w_forward_output is made visible.
function w_forward_output_OpeningFcn(hObject, eventdata, handles, varargin)
global T_F;
textLabel = sprintf('Variable C = %d', T_F);
set(handles.text1, 'String', textLabel);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to w_forward_output (see VARARGIN)

% Choose default command line output for w_forward_output
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes w_forward_output wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = w_forward_output_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
