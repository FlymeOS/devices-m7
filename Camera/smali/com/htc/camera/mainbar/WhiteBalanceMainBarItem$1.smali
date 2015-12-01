.class Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$1;
.super Ljava/lang/Object;
.source "WhiteBalanceMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    # invokes: Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->updateEnableState()V
    invoke-static {v0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;->access$400(Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;)V

    .line 251
    return-void
.end method
