.class Lcom/htc/camera/preferences/PreferenceBinder$2;
.super Ljava/lang/Object;
.source "PreferenceBinder.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<TTValue;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/preferences/PreferenceBinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/preferences/PreferenceBinder;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/camera/preferences/PreferenceBinder$2;->this$0:Lcom/htc/camera/preferences/PreferenceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder$2;->this$0:Lcom/htc/camera/preferences/PreferenceBinder;

    # getter for: Lcom/htc/camera/preferences/PreferenceBinder;->m_IsSynchronizing:Z
    invoke-static {v0}, Lcom/htc/camera/preferences/PreferenceBinder;->access$000(Lcom/htc/camera/preferences/PreferenceBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/camera/preferences/PreferenceBinder$2;->this$0:Lcom/htc/camera/preferences/PreferenceBinder;

    iget-object v1, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    # invokes: Lcom/htc/camera/preferences/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/htc/camera/preferences/PreferenceBinder;->access$100(Lcom/htc/camera/preferences/PreferenceBinder;Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method
