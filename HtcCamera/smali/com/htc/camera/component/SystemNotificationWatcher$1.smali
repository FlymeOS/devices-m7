.class Lcom/htc/camera/component/SystemNotificationWatcher$1;
.super Lcom/htc/camera/trigger/Trigger;
.source "SystemNotificationWatcher.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SystemNotificationWatcher;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SystemNotificationWatcher;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/camera/component/SystemNotificationWatcher$1;->this$0:Lcom/htc/camera/component/SystemNotificationWatcher;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/camera/component/SystemNotificationWatcher$1;->this$0:Lcom/htc/camera/component/SystemNotificationWatcher;

    # invokes: Lcom/htc/camera/component/SystemNotificationWatcher;->hideNotificationUI()V
    invoke-static {v0}, Lcom/htc/camera/component/SystemNotificationWatcher;->access$000(Lcom/htc/camera/component/SystemNotificationWatcher;)V

    .line 94
    return-void
.end method
