.class Lcom/htc/camera/panorama/PanoramaPlusUI$11;
.super Lcom/htc/lib1/cc/app/HtcProgressDialog;
.source "PanoramaPlusUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$11;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {p0, p2}, Lcom/htc/lib1/cc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1439
    const/4 v0, 0x1

    return v0
.end method
