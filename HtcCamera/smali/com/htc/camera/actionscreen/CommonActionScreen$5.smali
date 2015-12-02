.class Lcom/htc/camera/actionscreen/CommonActionScreen$5;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$5;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$5;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # invokes: Lcom/htc/camera/actionscreen/CommonActionScreen;->onShareClicked()V
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$400(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    .line 148
    return-void
.end method
