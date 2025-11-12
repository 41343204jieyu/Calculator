#ifndef CALCULATORDIG_H
#define CALCULATORDIG_H

#include <QDialog>
#include <QLineEdit>
#include <QPushButton>

class CalculatorDig : public QDialog
{
    Q_OBJECT

public:
    CalculatorDig(QWidget *parent = nullptr);
    ~CalculatorDig();

private slots:
    void onButtonClicked();

private:
    QLineEdit *display;
    // 不必每個按鈕都成員變數，統一用 sender() 辨識
    QString currentExpression;

    void evaluateExpression();
};

#endif // CALCULATORDIG_H
