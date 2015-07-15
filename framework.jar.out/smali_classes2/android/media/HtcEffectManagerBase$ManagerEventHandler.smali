.class Landroid/media/HtcEffectManagerBase$ManagerEventHandler;
.super Landroid/os/Handler;
.source "HtcEffectManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HtcEffectManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagerEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/HtcEffectManagerBase;


# direct methods
.method constructor <init>(Landroid/media/HtcEffectManagerBase;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 272
    iput-object p1, p0, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;->this$0:Landroid/media/HtcEffectManagerBase;

    .line 273
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 274
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;->this$0:Landroid/media/HtcEffectManagerBase;

    invoke-virtual {v0}, Landroid/media/HtcEffectManagerBase;->onMessageBeatsNotify()V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Landroid/media/HtcEffectManagerBase$ManagerEventHandler;->this$0:Landroid/media/HtcEffectManagerBase;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/HtcEffectManagerBase;->onPersistProperty(II)V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
