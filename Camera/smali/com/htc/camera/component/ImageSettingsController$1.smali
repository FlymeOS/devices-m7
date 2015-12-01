.class Lcom/htc/camera/component/ImageSettingsController$1;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsController;

.field final synthetic val$applyImmediately:Z

.field final synthetic val$clone:Lcom/htc/camera/ImageSettings;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsController;Lcom/htc/camera/ImageSettings;Z)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsController$1;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    iput-object p2, p0, Lcom/htc/camera/component/ImageSettingsController$1;->val$clone:Lcom/htc/camera/ImageSettings;

    iput-boolean p3, p0, Lcom/htc/camera/component/ImageSettingsController$1;->val$applyImmediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsController$1;->this$0:Lcom/htc/camera/component/ImageSettingsController;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsController$1;->val$clone:Lcom/htc/camera/ImageSettings;

    iget-boolean v2, p0, Lcom/htc/camera/component/ImageSettingsController$1;->val$applyImmediately:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/ImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 94
    return-void
.end method
