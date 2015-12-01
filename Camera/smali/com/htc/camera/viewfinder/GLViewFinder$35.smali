.class Lcom/htc/camera/viewfinder/GLViewFinder$35;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "GLViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Lcom/htc/camera/PhotoSizeMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$35;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/PhotoSizeMode;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/PhotoSizeMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$35;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->startRatioChangeAnimation(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$100(Lcom/htc/camera/viewfinder/GLViewFinder;Z)V

    .line 1699
    return-void
.end method
