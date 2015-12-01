.class Lcom/htc/camera/sina/GifModeController$1;
.super Ljava/lang/Object;
.source "GifModeController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/sina/GifModeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/sina/GifModeController;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeController$1;->this$0:Lcom/htc/camera/sina/GifModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController$1;->this$0:Lcom/htc/camera/sina/GifModeController;

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/htc/camera/sina/GifModeController;->onPreviewCallbackTimeout(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/sina/GifModeController;->access$000(Lcom/htc/camera/sina/GifModeController;I)V

    .line 131
    return-void
.end method
