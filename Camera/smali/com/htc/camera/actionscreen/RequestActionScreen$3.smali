.class Lcom/htc/camera/actionscreen/RequestActionScreen$3;
.super Ljava/lang/Object;
.source "RequestActionScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/RequestActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/RequestActionScreen;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/camera/actionscreen/RequestActionScreen$3;->this$0:Lcom/htc/camera/actionscreen/RequestActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/camera/actionscreen/RequestActionScreen$3;->this$0:Lcom/htc/camera/actionscreen/RequestActionScreen;

    # invokes: Lcom/htc/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V
    invoke-static {v0}, Lcom/htc/camera/actionscreen/RequestActionScreen;->access$200(Lcom/htc/camera/actionscreen/RequestActionScreen;)V

    .line 242
    return-void
.end method
