.class Lcom/htc/camera/widget/ExpandableMenu$2;
.super Ljava/lang/Object;
.source "ExpandableMenu.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ExpandableMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ExpandableMenu;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/camera/widget/ExpandableMenu$2;->this$0:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu$2;->this$0:Lcom/htc/camera/widget/ExpandableMenu;

    # invokes: Lcom/htc/camera/widget/ExpandableMenu;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/htc/camera/widget/ExpandableMenu;->access$100(Lcom/htc/camera/widget/ExpandableMenu;Landroid/os/Message;)V

    .line 218
    const/4 v0, 0x1

    return v0
.end method
