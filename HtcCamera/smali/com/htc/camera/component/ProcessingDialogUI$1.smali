.class Lcom/htc/camera/component/ProcessingDialogUI$1;
.super Ljava/lang/Object;
.source "ProcessingDialogUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ProcessingDialogUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ProcessingDialogUI;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/camera/component/ProcessingDialogUI$1;->this$0:Lcom/htc/camera/component/ProcessingDialogUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
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
    .line 63
    sget-object v1, Lcom/htc/camera/component/ProcessingDialogUI$3;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI$1;->this$0:Lcom/htc/camera/component/ProcessingDialogUI;

    # invokes: Lcom/htc/camera/component/ProcessingDialogUI;->closeProcessingDialog()V
    invoke-static {v0}, Lcom/htc/camera/component/ProcessingDialogUI;->access$000(Lcom/htc/camera/component/ProcessingDialogUI;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
