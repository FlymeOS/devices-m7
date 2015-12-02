.class Lcom/htc/camera/menu/ResolutionMenuItem$2;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/ResolutionMenuItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/ResolutionMenuItem;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/camera/menu/ResolutionMenuItem$2;->this$0:Lcom/htc/camera/menu/ResolutionMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/camera/menu/ResolutionMenuItem$2;->this$0:Lcom/htc/camera/menu/ResolutionMenuItem;

    # invokes: Lcom/htc/camera/menu/ResolutionMenuItem;->linkToCameraThread()V
    invoke-static {v0}, Lcom/htc/camera/menu/ResolutionMenuItem;->access$100(Lcom/htc/camera/menu/ResolutionMenuItem;)V

    .line 144
    return-void
.end method
