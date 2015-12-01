.class Lcom/htc/camera/dualcamera/DualCameraUI$8;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1293
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_HasReviewBitmap:Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2800(Lcom/htc/camera/dualcamera/DualCameraUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2900(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->showUI(Landroid/view/View;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3000(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/view/View;ZZ)V

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2900(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2900(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$8;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_ReviewImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2900(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
