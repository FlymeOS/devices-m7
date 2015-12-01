.class Lcom/htc/camera/widget/ExpandableMenu$1;
.super Ljava/lang/Object;
.source "ExpandableMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/ExpandableMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/ExpandableMenu;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/camera/widget/ExpandableMenu$1;->this$0:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu$1;->this$0:Lcom/htc/camera/widget/ExpandableMenu;

    # invokes: Lcom/htc/camera/widget/ExpandableMenu;->onItemClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/htc/camera/widget/ExpandableMenu;->access$000(Lcom/htc/camera/widget/ExpandableMenu;Landroid/view/View;)V

    .line 136
    return-void
.end method
