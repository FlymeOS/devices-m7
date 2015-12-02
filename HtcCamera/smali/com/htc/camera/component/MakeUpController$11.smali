.class Lcom/htc/camera/component/MakeUpController$11;
.super Ljava/lang/Object;
.source "MakeUpController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/MakeUpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/MakeUpController;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController$11;->this$0:Lcom/htc/camera/component/MakeUpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$11;->this$0:Lcom/htc/camera/component/MakeUpController;

    # invokes: Lcom/htc/camera/component/MakeUpController;->intialDynamicListner()V
    invoke-static {v0}, Lcom/htc/camera/component/MakeUpController;->access$200(Lcom/htc/camera/component/MakeUpController;)V

    .line 279
    return-void
.end method
