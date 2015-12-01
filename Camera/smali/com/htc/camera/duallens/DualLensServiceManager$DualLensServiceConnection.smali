.class final Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;
.super Ljava/lang/Object;
.source "DualLensServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensServiceManager;


# direct methods
.method private constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/duallens/DualLensServiceManager$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    invoke-static {p2}, Lcom/htc/duallensservice/IDuallensService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/duallensservice/IDuallensService;

    move-result-object v1

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->onServiceBound(Lcom/htc/duallensservice/IDuallensService;)V
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$000(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/duallensservice/IDuallensService;)V

    .line 67
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    # getter for: Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$100(Lcom/htc/camera/duallens/DualLensServiceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected() - Dual-lens service disconnected"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$202(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/duallensservice/IDuallensService;)Lcom/htc/duallensservice/IDuallensService;

    .line 74
    return-void
.end method
