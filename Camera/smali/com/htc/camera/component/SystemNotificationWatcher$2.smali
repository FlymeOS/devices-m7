.class Lcom/htc/camera/component/SystemNotificationWatcher$2;
.super Ljava/lang/Object;
.source "SystemNotificationWatcher.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SystemNotificationWatcher;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SystemNotificationWatcher;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/camera/component/SystemNotificationWatcher$2;->this$0:Lcom/htc/camera/component/SystemNotificationWatcher;

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
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    sget-object v1, Lcom/htc/camera/component/SystemNotificationWatcher$3;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 110
    iget-object v0, p0, Lcom/htc/camera/component/SystemNotificationWatcher$2;->this$0:Lcom/htc/camera/component/SystemNotificationWatcher;

    # invokes: Lcom/htc/camera/component/SystemNotificationWatcher;->hideNotificationUI()V
    invoke-static {v0}, Lcom/htc/camera/component/SystemNotificationWatcher;->access$000(Lcom/htc/camera/component/SystemNotificationWatcher;)V

    .line 113
    :pswitch_0
    return-void

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
