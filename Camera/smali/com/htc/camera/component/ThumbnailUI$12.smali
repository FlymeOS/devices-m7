.class Lcom/htc/camera/component/ThumbnailUI$12;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$12;->this$0:Lcom/htc/camera/component/ThumbnailUI;

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

    .line 698
    sget-object v1, Lcom/htc/camera/component/ThumbnailUI$19;->$SwitchMap$com$htc$camera$UIState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 701
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$12;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenCloseReason:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    if-eq v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$12;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->createThumbnailImage()V
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$1300(Lcom/htc/camera/component/ThumbnailUI;)V

    goto :goto_0

    .line 706
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$12;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/htc/camera/component/ThumbnailUI;->access$1100(Lcom/htc/camera/component/ThumbnailUI;ZZ)V

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
