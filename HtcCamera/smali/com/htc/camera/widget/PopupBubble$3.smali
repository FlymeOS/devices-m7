.class Lcom/htc/camera/widget/PopupBubble$3;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/PopupBubble;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble$3;->this$0:Lcom/htc/camera/widget/PopupBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$3;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$600(Lcom/htc/camera/widget/PopupBubble;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->volumeKeyControlType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/VolumeKeyType;

    .line 243
    sget-object v1, Lcom/htc/camera/VolumeKeyType;->None:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/VolumeKeyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$3;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$600(Lcom/htc/camera/widget/PopupBubble;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0, p2, p3}, Lcom/htc/camera/HTCCamera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 246
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$3;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$600(Lcom/htc/camera/widget/PopupBubble;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0, p2, p3}, Lcom/htc/camera/HTCCamera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 258
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_1
    sget-object v1, Lcom/htc/camera/VolumeKeyType;->Zoom:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/VolumeKeyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    sget-object v1, Lcom/htc/camera/VolumeKeyType;->Capture:Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/VolumeKeyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$3;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$000(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismiss()V

    .line 255
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$3;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$600(Lcom/htc/camera/widget/PopupBubble;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0, p2, p3}, Lcom/htc/camera/HTCCamera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 256
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$3;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$600(Lcom/htc/camera/widget/PopupBubble;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0, p2, p3}, Lcom/htc/camera/HTCCamera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method
