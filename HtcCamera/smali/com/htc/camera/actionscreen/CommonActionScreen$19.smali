.class Lcom/htc/camera/actionscreen/CommonActionScreen$19;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$19;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$19;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # invokes: Lcom/htc/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$300(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    .line 1228
    return-void
.end method
