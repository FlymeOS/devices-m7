.class Lcom/htc/camera/gl/Shape$1;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Lcom/htc/camera/gl/a;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/gl/Shape;


# direct methods
.method constructor <init>(Lcom/htc/camera/gl/Shape;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/htc/camera/gl/Shape$1;->this$0:Lcom/htc/camera/gl/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentShaderChanged(Lcom/htc/camera/gl/Brush;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/camera/gl/Shape$1;->this$0:Lcom/htc/camera/gl/Shape;

    invoke-virtual {v0}, Lcom/htc/camera/gl/Shape;->invalidateGLProgram()V

    .line 18
    return-void
.end method
