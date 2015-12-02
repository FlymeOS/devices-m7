.class Lcom/htc/camera/component/PanoramaUI2$2;
.super Ljava/lang/Object;
.source "PanoramaUI2.java"

# interfaces
.implements Lcom/htc/camera/widget/m;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaUI2$2;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLengthLimitReached()V
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$2;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$100(Lcom/htc/camera/component/PanoramaUI2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Length limit is reached."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$2;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaUI2;->access$200(Lcom/htc/camera/component/PanoramaUI2;)Lcom/htc/camera/component/PanoramaController2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$2;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2$2;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->m_PanoramaController:Lcom/htc/camera/component/PanoramaController2;
    invoke-static {v1}, Lcom/htc/camera/component/PanoramaUI2;->access$200(Lcom/htc/camera/component/PanoramaUI2;)Lcom/htc/camera/component/PanoramaController2;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/PanoramaUI2;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 639
    :cond_0
    return-void
.end method
