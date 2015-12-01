.class Lcom/htc/camera/component/SettingsManager$4;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SettingsManager;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/htc/camera/component/SettingsManager$SettingsHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/htc/camera/component/SettingsManager$4;->this$0:Lcom/htc/camera/component/SettingsManager;

    iput-object p2, p0, Lcom/htc/camera/component/SettingsManager$4;->val$handle:Lcom/htc/camera/component/SettingsManager$SettingsHandle;

    iput p3, p0, Lcom/htc/camera/component/SettingsManager$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/camera/component/SettingsManager$4;->this$0:Lcom/htc/camera/component/SettingsManager;

    iget-object v1, p0, Lcom/htc/camera/component/SettingsManager$4;->val$handle:Lcom/htc/camera/component/SettingsManager$SettingsHandle;

    iget v2, p0, Lcom/htc/camera/component/SettingsManager$4;->val$flags:I

    # invokes: Lcom/htc/camera/component/SettingsManager;->setSettingsInternal(Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/SettingsManager;->access$300(Lcom/htc/camera/component/SettingsManager;Lcom/htc/camera/component/SettingsManager$SettingsHandle;I)Z

    .line 250
    return-void
.end method
