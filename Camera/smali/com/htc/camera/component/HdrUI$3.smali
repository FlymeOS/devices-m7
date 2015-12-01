.class Lcom/htc/camera/component/HdrUI$3;
.super Ljava/lang/Object;
.source "HdrUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/HdrUI;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/htc/camera/component/HdrUI$3;->this$0:Lcom/htc/camera/component/HdrUI;

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
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 278
    sget-object v1, Lcom/htc/camera/component/HdrUI$4;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI$3;->this$0:Lcom/htc/camera/component/HdrUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/HdrUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->Hdr:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI$3;->this$0:Lcom/htc/camera/component/HdrUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/HdrUI;->access$302(Lcom/htc/camera/component/HdrUI;Z)Z

    .line 285
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI$3;->this$0:Lcom/htc/camera/component/HdrUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/HdrUI;->enterHdrMode(I)V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI$3;->this$0:Lcom/htc/camera/component/HdrUI;

    # getter for: Lcom/htc/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z
    invoke-static {v0}, Lcom/htc/camera/component/HdrUI;->access$300(Lcom/htc/camera/component/HdrUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI$3;->this$0:Lcom/htc/camera/component/HdrUI;

    # setter for: Lcom/htc/camera/component/HdrUI;->m_IsEnteredFromAutoScene:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/HdrUI;->access$302(Lcom/htc/camera/component/HdrUI;Z)Z

    .line 295
    iget-object v0, p0, Lcom/htc/camera/component/HdrUI$3;->this$0:Lcom/htc/camera/component/HdrUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/HdrUI;->exitHdrMode(I)V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
