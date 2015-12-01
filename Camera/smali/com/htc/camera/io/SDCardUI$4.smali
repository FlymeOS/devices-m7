.class Lcom/htc/camera/io/SDCardUI$4;
.super Ljava/lang/Object;
.source "SDCardUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$4;->this$0:Lcom/htc/camera/io/SDCardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$4;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->checkQuality()V
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$800(Lcom/htc/camera/io/SDCardUI;)V

    .line 264
    return-void
.end method
