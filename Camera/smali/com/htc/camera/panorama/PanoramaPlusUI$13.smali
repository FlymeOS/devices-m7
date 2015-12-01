.class Lcom/htc/camera/panorama/PanoramaPlusUI$13;
.super Ljava/lang/Object;
.source "PanoramaPlusUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$13;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$13;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CancelBtn:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$3300(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2212
    return-void
.end method
