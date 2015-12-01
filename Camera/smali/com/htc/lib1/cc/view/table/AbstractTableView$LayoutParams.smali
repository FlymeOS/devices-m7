.class public Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbstractTableView.java"


# instance fields
.field viewType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 2762
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2763
    iput p3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;->viewType:I

    .line 2764
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 2746
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2747
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 2771
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2772
    return-void
.end method
