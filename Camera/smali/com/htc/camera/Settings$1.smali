.class Lcom/htc/camera/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/Settings;


# direct methods
.method constructor <init>(Lcom/htc/camera/Settings;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/camera/Settings$1;->this$0:Lcom/htc/camera/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/camera/Settings$1;->this$0:Lcom/htc/camera/Settings;

    # getter for: Lcom/htc/camera/Settings;->m_GlobalPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/htc/camera/Settings;->access$000(Lcom/htc/camera/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/Settings$1;->this$0:Lcom/htc/camera/Settings;

    # getter for: Lcom/htc/camera/Settings;->m_PrivatePreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/htc/camera/Settings;->access$100(Lcom/htc/camera/Settings;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/htc/camera/Settings;->PRIVATE_PREFERENCE_KEYS:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/Settings$1;->this$0:Lcom/htc/camera/Settings;

    iget-object v1, p0, Lcom/htc/camera/Settings$1;->this$0:Lcom/htc/camera/Settings;

    new-instance v2, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v2, p2}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    # invokes: Lcom/htc/camera/Settings;->raisePreferenceChangedEvent(Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/Settings;->access$200(Lcom/htc/camera/Settings;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    .line 79
    :cond_1
    return-void
.end method
