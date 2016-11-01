---
documentclass: report
output:
  pdf_document:
    fig_caption: yes
---

# Компьютерное моделирование электромагнитных процессов - ДЗ 1

## Задание 1

Что будет происходить, если задать электрическое поле в виде импульса в
момент $n=0$, но использовать нулевое значение магнитного поля при $n=-1/2$? Объяснить
результат.

**Ответ**
Поскольку градиент электрического поля вдоль оси $x$ не равен нулю, возникнет переменное
(по времени) магнитное поле.  Данный факт следует из соотношения

$$
[\vec{\nabla}; \vec{E}] = -\frac{1}{c}\frac{\delta \vec{B}}{\delta t}
$$

Как можно заметить, переменное магнитное поле будет направлено таким образом, что будет
уменьшать электрическое поле. То есть справа от вершины импульса магнитное поле будет
направлено по оси $z$, а слева - против неё

$$
\begin{aligned}
\vec{B} \uparrow\uparrow \vec{z} \| x > x0 \\
\vec{B} \downarrow\uparrow \vec{z} \| x < x0
\end{aligned}
$$

Данный процесс будет продолжаться до тех пор, пока изменение электрического поля не будет
уравновешиваться изменением магнитного поля (то есть пока амплитуда импульса магнитного
поля не станет равной амплитуде электрического поля).

Подтвердим результатами моделирования:

\begin{figure}[H]
\centering
{\includegraphics{img/E_T_0.pdf}}
\caption{Распространение импульса E, T=0}
\end{figure}

\begin{figure}[H]
\centering
{\includegraphics{img/H_T_0.pdf}}
\caption{Распространение импульса H, T=0}
\end{figure}

\begin{figure}[H]
\centering
{\includegraphics{img/E_T_10.pdf}}
\caption{Распространение импульса Е, T=10}
\end{figure}

\begin{figure}[H]
\centering
{\includegraphics{img/H_T_10.pdf}}
\caption{Распространение импульса H, T=10}
\end{figure}

\begin{figure}[H]
\centering
{\includegraphics{img/E_T_20.pdf}}
\caption{Распространение импульса E, T=20}
\end{figure}
\begin{figure}[H]
\centering
{\includegraphics{img/H_T_20.pdf}}
\caption{Распространение импульса H, T=20}
\end{figure}

\begin{figure}[H]
\centering
{\includegraphics{img/E_T_30.pdf}}
\caption{Распространение импульса Е, T=0}
\end{figure}
\begin{figure}[H]
\centering
{\includegraphics{img/H_T_30.pdf}}
\caption{Распространение импульса H, T=0}
\end{figure}

\begin{figure}[H]
\centering
{\includegraphics{img/E_T>30.pdf}}
\caption{Распространение импульса Е, T=0, T>30}
\end{figure}
\begin{figure}[H]
\centering
{\includegraphics{img/H_T>30.pdf}}
\caption{Распространение импульса H, T=0, T>30}
\end{figure}

## Задание 2

Что будет, если использовать для области моделирования граничные условия
H=0 ? Объяснить результат.

**Ответ**

\begin{figure}[H]
\centering
{\includegraphics{img/task2_E.pdf}}
\caption{Отражение от границы импульса E}
\end{figure}
\begin{figure}[H]
\centering
{\includegraphics{img/task2_H.pdf}}
\caption{Отражение от границы импульса H}
\end{figure}



