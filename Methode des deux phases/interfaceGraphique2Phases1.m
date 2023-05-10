function varargout = interfaceGraphique2Phases1(varargin)
% INTERFACEGRAPHIQUE2PHASES1 MATLAB code for interfaceGraphique2Phases1.fig
%      INTERFACEGRAPHIQUE2PHASES1, by itself, creates a new INTERFACEGRAPHIQUE2PHASES1 or raises the existing
%      singleton*.
%
%      H = INTERFACEGRAPHIQUE2PHASES1 returns the handle to a new INTERFACEGRAPHIQUE2PHASES1 or the handle to
%      the existing singleton*.
%
%      INTERFACEGRAPHIQUE2PHASES1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACEGRAPHIQUE2PHASES1.M with the given input arguments.
%
%      INTERFACEGRAPHIQUE2PHASES1('Property','Value',...) creates a new INTERFACEGRAPHIQUE2PHASES1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaceGraphique2Phases1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaceGraphique2Phases1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaceGraphique2Phases1

% Last Modified by GUIDE v2.5 14-Apr-2023 00:48:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaceGraphique2Phases1_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaceGraphique2Phases1_OutputFcn, ...
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


% --- Executes just before interfaceGraphique2Phases1 is made visible.
function interfaceGraphique2Phases1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaceGraphique2Phases1 (see VARARGIN)

% Choose default command line output for interfaceGraphique2Phases1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfaceGraphique2Phases1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaceGraphique2Phases1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double
% Get the string representation of the matrix from the GUI control
matrixStrA = get(handles.A, 'String');

% Convert the string to a matrix
matrixA = str2num(matrixStrA); % or str2double(matrixStr);

% Check if the conversion was successful
if isempty(matrixA)
    % Conversion failed, handle the error
    disp('Error: Invalid matrix entered.');
else
    % Conversion successful
    handles.matrixA = matrixA;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double
matrixStrb = get(handles.b, 'String');

% Convert the string to a matrix
matrixb = str2num(matrixStrb); % or str2double(matrixStr);

% Check if the conversion was successful
if isempty(matrixb)
    % Conversion failed, handle the error
    disp('Error: Invalid matrix entered.');
else
    % Conversion successful, do something with the matrix
    handles.matrixb = matrixb;
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Aeq_Callback(hObject, eventdata, handles)
% hObject    handle to Aeq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Aeq as text
%        str2double(get(hObject,'String')) returns contents of Aeq as a double
matrixStrAeq = get(handles.Aeq, 'String');

% Convert the string to a matrix
matrixAeq = str2num(matrixStrAeq); % or str2double(matrixStr);

% Check if the conversion was successful
if isempty(matrixAeq)
    % Conversion failed, handle the error
    disp('Error: Invalid matrix entered.');
else
    % Conversion successful
    handles.matrixAeq = matrixAeq;
    guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function Aeq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Aeq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beq_Callback(hObject, eventdata, handles)
% hObject    handle to beq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beq as text
%        str2double(get(hObject,'String')) returns contents of beq as a double
matrixStrbeq = get(handles.beq, 'String');

% Convert the string to a matrix
matrixbeq = str2num(matrixStrbeq); % or str2double(matrixStr);

% Check if the conversion was successful
if isempty(matrixbeq)
    % Conversion failed, handle the error
    disp('Error: Invalid matrix entered.');
else
    % Conversion successful
    handles.matrixbeq = matrixbeq;
    guidata(hObject, handles);
end


% --- Executes during object creation, after setting all properties.
function beq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double
matrixStrf = get(handles.f, 'String');

% Convert the string to a matrix
matrixf = str2num(matrixStrf); % or str2double(matrixStr);

% Check if the conversion was successful
if isempty(matrixf)
    % Conversion failed, handle the error
    disp('Error: Invalid matrix entered.');
else
    % Conversion successful, 
    handles.matrixf = matrixf;
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reponse_Callback(hObject, eventdata, handles)
% hObject    handle to reponse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reponse as text
%        str2double(get(hObject,'String')) returns contents of reponse as a double
reponse = get(handles.reponse, 'String');
% Conversion successful, 
handles.reponse = reponse;
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function reponse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reponse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculer.
function calculer_Callback(hObject, eventdata, handles)
% hObject    handle to calculer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get the matrix from the handles structure
matrixA = handles.matrixA;
matrixb = handles.matrixb;
matrixAeq = handles.matrixAeq;
matrixbeq = handles.matrixbeq;
matrixf = handles.matrixf;
reponse=handles.reponse;

% Do something with the matrix
[S,X,fobj] = M_2Phases(matrixA,matrixAeq,matrixb,matrixbeq,matrixf,reponse);
% Store the variables in the handles structure
handles.S = S;
handles.X = X;
handles.fobj = fobj;

% Update the X_input field with the value of X
set(handles.X_input, 'String', num2str(X));
% Update the X_input field with the value of X
set(handles.fobj_input, 'String', num2str(fobj));
% Update the X_input field with the value of X
set(handles.S_input, 'String', num2str(S));

% Update the handles structure
guidata(hObject, handles);



function X_input_Callback(hObject, eventdata, handles)
% hObject    handle to X_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X_input as text
%        str2double(get(hObject,'String')) returns contents of X_input as a double
% Get the contents of the X_input field
X = str2double(get(hObject,'String'));

% Store the input in the handles structure
handles.X = X;
% Display the input in the X_input field
set(hObject, 'String', num2str(X));
% Update the handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function X_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fobj_input_Callback(hObject, eventdata, handles)
% hObject    handle to fobj_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fobj_input as text
%        str2double(get(hObject,'String')) returns contents of fobj_input as a double
% Get the contents of the fobj_input field
fobj = str2double(get(hObject,'String'));

% Store the input in the handles structure
handles.fobj = fobj;
% Display the input in the X_input field
set(hObject, 'String', num2str(fobj));
% Update the handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function fobj_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fobj_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S_input_Callback(hObject, eventdata, handles)
% hObject    handle to S_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S_input as text
%        str2double(get(hObject,'String')) returns contents of S_input as a double
% Get the contents of the X_input field
S = str2double(get(hObject,'String'));

% Store the input in the handles structure
handles.S = S;
% Display the input in the X_input field
set(hObject, 'String', num2str(S));
% Update the handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function S_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
