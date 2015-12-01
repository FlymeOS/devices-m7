.class Lcom/htc/camera/viewfinder/GLViewFinder$50;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Lcom/htc/camera/widget/g;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 3124
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$50;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$50;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onDrawPreviewFilter(Landroid/graphics/Canvas;)V
    invoke-static {v0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$8100(Lcom/htc/camera/viewfinder/GLViewFinder;Landroid/graphics/Canvas;)V

    .line 3129
    return-void
.end method
