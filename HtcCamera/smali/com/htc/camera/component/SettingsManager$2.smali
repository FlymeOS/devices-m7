.class Lcom/htc/camera/component/SettingsManager$2;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsManager;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/camera/component/SettingsManager$2;->this$0:Lcom/htc/camera/component/SettingsManager;

    iput-object p2, p0, Lcom/htc/camera/component/SettingsManager$2;->val$handle:Lcom/htc/camera/Handle;

    iput p3, p0, Lcom/htc/camera/component/SettingsManager$2;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager$2;->this$0:Lcom/htc/camera/component/SettingsManager;

    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager$2;->val$handle:Lcom/htc/camera/Handle;

    check-cast v0, Lcom/htc/camera/component/SettingsManager$SettingsHandle;

    iget v2, p0, Lcom/htc/camera/component/SettingsManager$2;->val$flags:I

    # invokes: Lcom/htc/camera/component/SettingsManager;->restoreSettingsInternal(Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)V
    invoke-static {v1, v0, v2}, Lcom/htc/camera/component/SettingsManager;->access$200(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)V

    .line 143
    return-void
.end method
