.class final Lcom/htc/camera/component/Component$MessageHandler;
.super Landroid/os/Handler;
.source "Component.java"


# instance fields
.field private m_Owner:Lcom/htc/camera/component/Component;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/camera/component/Component$MessageHandler;->m_Owner:Lcom/htc/camera/component/Component;

    .line 44
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/component/Component$MessageHandler;->m_Owner:Lcom/htc/camera/component/Component;

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/Component$MessageHandler;->m_Owner:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$000(Lcom/htc/camera/component/Component;)Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v0, p0, Lcom/htc/camera/component/Component$MessageHandler;->m_Owner:Lcom/htc/camera/component/Component;

    # getter for: Lcom/htc/camera/component/Component;->m_PrintMessageLogs:Z
    invoke-static {v0}, Lcom/htc/camera/component/Component;->access$100(Lcom/htc/camera/component/Component;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 58
    :goto_0
    if-eqz v1, :cond_2

    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/Component$MessageHandler;->m_Owner:Lcom/htc/camera/component/Component;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v3}, Lcom/htc/camera/debug/Debugger;->getMessageName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v3, "Message : "

    const-string v4, " - start"

    invoke-static {v2, v3, v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    :goto_1
    iget-object v3, p0, Lcom/htc/camera/component/Component$MessageHandler;->m_Owner:Lcom/htc/camera/component/Component;

    invoke-virtual {v3, p1}, Lcom/htc/camera/component/Component;->handleMessage(Landroid/os/Message;)V

    .line 70
    if-eqz v1, :cond_0

    .line 71
    const-string v1, "Message : "

    const-string v3, " - end"

    invoke-static {v2, v1, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    :cond_0
    :goto_2
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 74
    :cond_3
    const-string v0, "Component.MessageHandler"

    const-string v1, "Component is deinitialized"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/Component$MessageHandler;->m_Owner:Lcom/htc/camera/component/Component;

    .line 83
    return-void
.end method
