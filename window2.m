function varargout = window2(varargin)
% WINDOW2 MATLAB code for window2.fig
%      WINDOW2, by itself, creates a new WINDOW2 or raises the existing
%      singleton*.
%
%      H = WINDOW2 returns the handle to a new WINDOW2 or the handle to
%      the existing singleton*.
%
%      WINDOW2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WINDOW2.M with the given input arguments.
%
%      WINDOW2('Property','Value',...) creates a new WINDOW2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before window2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to window2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help window2

% Last Modified by GUIDE v2.5 24-Nov-2019 12:14:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @window2_OpeningFcn, ...
                   'gui_OutputFcn',  @window2_OutputFcn, ...
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


% --- Executes just before window2 is made visible.
function window2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to window2 (see VARARGIN)

% Choose default command line output for window2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes window2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = window2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function nl_Callback(hObject, eventdata, handles)
% hObject    handle to nl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nl as text
%        str2double(get(hObject,'String')) returns contents of nl as a double


% --- Executes during object creation, after setting all properties.
function nl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=get(handles.nl,'String');
nl=str2double(n);

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

setappdata(window2,'nl',nl);
newWindow2_1
close window2
