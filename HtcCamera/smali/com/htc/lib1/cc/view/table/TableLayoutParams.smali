.class public Lcom/htc/lib1/cc/view/table/TableLayoutParams;
.super Ljava/lang/Object;
.source "TableLayoutParams.java"


# instance fields
.field private initialWithScrollControl:Z

.field private isScrollOverBoundary:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->mOrientation:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    .line 22
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    return-void
.end method


# virtual methods
.method public enableScrollOverBoundary(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    .line 46
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->mOrientation:I

    return v0
.end method

.method public initialWithScrollControl(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    .line 63
    return-void
.end method

.method public isInitialWithScrollControl()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->initialWithScrollControl:Z

    return v0
.end method

.method public isScrollOverBoundary()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->isScrollOverBoundary:Z

    return v0
.end method

.method public setOrientation(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->mOrientation:I

    .line 38
    return-void
.end method
