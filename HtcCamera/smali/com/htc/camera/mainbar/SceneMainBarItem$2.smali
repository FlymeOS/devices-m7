.class Lcom/htc/camera/mainbar/SceneMainBarItem$2;
.super Ljava/lang/Object;
.source "SceneMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/SceneMainBarItem;->updateItem()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->access$200(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    .line 232
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/SceneMainBarItem;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/mainbar/SceneMainBarItem;->m_HasChange:Z
    invoke-static {v0, v1}, Lcom/htc/camera/mainbar/SceneMainBarItem;->access$302(Lcom/htc/camera/mainbar/SceneMainBarItem;Z)Z

    .line 233
    return-void
.end method
