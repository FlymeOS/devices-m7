.class Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;
.super Ljava/lang/Object;
.source "PanoSEGLSurfaceView.java"


# instance fields
.field private Bottom:I

.field private Height:I

.field private Left:I

.field private Right:I

.field private Top:I

.field private Width:I

.field public isSet:Z

.field private screenH:I

.field private screenW:I

.field final synthetic this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 97
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->isSet:Z

    .line 89
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    .line 90
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    .line 91
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    .line 92
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    .line 93
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Width:I

    .line 94
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Height:I

    .line 95
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenW:I

    .line 96
    iput v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenH:I

    .line 98
    return-void
.end method

.method private updateValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    if-gtz v0, :cond_2

    .line 115
    iput v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenW:I

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    .line 122
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    if-gtz v0, :cond_4

    .line 123
    iput v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenH:I

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    .line 129
    :cond_1
    :goto_1
    return-void

    .line 116
    :cond_2
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    if-lez v0, :cond_3

    .line 117
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenW:I

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    goto :goto_0

    .line 118
    :cond_3
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    if-gtz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenW:I

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    goto :goto_0

    .line 124
    :cond_4
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    if-lez v0, :cond_5

    .line 125
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenH:I

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    goto :goto_1

    .line 126
    :cond_5
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    if-gtz v0, :cond_1

    .line 127
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenH:I

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    goto :goto_1
.end method


# virtual methods
.method public isInRange(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-boolean v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->isSet:Z

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    if-ge v1, p1, :cond_0

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenW:I

    iget v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    if-ge v1, p2, :cond_0

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenH:I

    iget v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public set(IIII)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->isSet:Z

    .line 101
    iput p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Left:I

    iput p2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Top:I

    iput p3, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Right:I

    iput p4, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Bottom:I

    .line 102
    return-void
.end method

.method public setScreenWH(II)V
    .locals 2

    .prologue
    .line 109
    iput p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenW:I

    iput p2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenH:I

    .line 110
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Width:I

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Height:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->updateValue()V

    .line 112
    :cond_0
    return-void
.end method

.method public setWH(II)V
    .locals 2

    .prologue
    .line 104
    iput p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Width:I

    iput p2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->Height:I

    .line 105
    iget v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenW:I

    iget v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->screenH:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->updateValue()V

    .line 107
    :cond_0
    return-void
.end method
