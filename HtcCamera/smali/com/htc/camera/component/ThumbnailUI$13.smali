.class Lcom/htc/camera/component/ThumbnailUI$13;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$13;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$13;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1100(Lcom/htc/camera/component/ThumbnailUI;ZZ)V

    .line 719
    return-void
.end method
