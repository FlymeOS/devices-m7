.class Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;
.super Ljava/lang/Object;
.source "PanoSEGLSurfaceView.java"


# instance fields
.field public drawableId:[I

.field public margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

.field public size:I

.field final synthetic this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->this$0:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput v0, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->size:I

    .line 137
    sget-object v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;->ICON_SIZE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;

    invoke-virtual {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;->ordinal()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->drawableId:[I

    .line 138
    sget-object v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;->ICON_SIZE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;

    invoke-virtual {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;->ordinal()I

    move-result v1

    new-array v1, v1, [Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    iput-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    .line 140
    :goto_0
    sget-object v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;->ICON_SIZE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;

    invoke-virtual {v1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$BUTTON_ICON;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    new-instance v2, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    invoke-direct {v2, p1}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;-><init>(Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView;)V

    aput-object v2, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public isTouching(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 150
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    const/4 v1, 0x1

    .line 154
    :cond_0
    return v1

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setScreenWH(II)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$ViewerButton;->margin:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$Margin;->setScreenWH(II)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method
