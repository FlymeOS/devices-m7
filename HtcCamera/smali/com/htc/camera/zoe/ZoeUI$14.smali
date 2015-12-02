.class Lcom/htc/camera/zoe/ZoeUI$14;
.super Lcom/htc/camera/data/Trigger;
.source "ZoeUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/Trigger",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$14;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/data/Trigger;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$14;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_NeedShowSDCardToast:Z
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->access$3402(Lcom/htc/camera/zoe/ZoeUI;Z)Z

    .line 1075
    return-void
.end method
