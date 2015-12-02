.class Lcom/htc/camera/actionscreen/CommonActionScreen$22;
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
    .line 1274
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$22;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$22;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # invokes: Lcom/htc/camera/actionscreen/CommonActionScreen;->onDeleteClicked()V
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$000(Lcom/htc/camera/actionscreen/CommonActionScreen;)V

    .line 1278
    return-void
.end method
