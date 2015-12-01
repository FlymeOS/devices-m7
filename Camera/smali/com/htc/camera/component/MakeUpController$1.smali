.class Lcom/htc/camera/component/MakeUpController$1;
.super Ljava/lang/Object;
.source "MakeUpController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/MakeUpController;

.field final synthetic val$applyImmediately:Z

.field final synthetic val$makeUpLevel:I


# direct methods
.method constructor <init>(Lcom/htc/camera/component/MakeUpController;IZ)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController$1;->this$0:Lcom/htc/camera/component/MakeUpController;

    iput p2, p0, Lcom/htc/camera/component/MakeUpController$1;->val$makeUpLevel:I

    iput-boolean p3, p0, Lcom/htc/camera/component/MakeUpController$1;->val$applyImmediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$1;->this$0:Lcom/htc/camera/component/MakeUpController;

    iget v1, p0, Lcom/htc/camera/component/MakeUpController$1;->val$makeUpLevel:I

    iget-boolean v2, p0, Lcom/htc/camera/component/MakeUpController$1;->val$applyImmediately:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(IZ)V

    .line 77
    return-void
.end method
