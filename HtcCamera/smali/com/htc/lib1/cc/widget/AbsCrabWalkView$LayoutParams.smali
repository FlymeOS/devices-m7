.class public Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbsCrabWalkView.java"


# instance fields
.field recycledHeaderFooter:Z

.field viewType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 4463
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4464
    iput p3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;->viewType:I

    .line 4465
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 4447
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4448
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 4472
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4473
    return-void
.end method
