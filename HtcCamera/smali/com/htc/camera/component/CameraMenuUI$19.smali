.class Lcom/htc/camera/component/CameraMenuUI$19;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/viewpager/e;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$19;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 965
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .prologue
    .line 970
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$19;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->updatePageIndicatorState()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2600(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 971
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$19;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$19;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2716

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 972
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$19;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/4 v1, -0x1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$202(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 973
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 977
    return-void
.end method
