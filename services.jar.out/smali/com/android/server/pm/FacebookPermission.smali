.class Lcom/android/server/pm/FacebookPermission;
.super Ljava/lang/Object;
.source "FacebookPermission.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final revoke:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "revoke"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/pm/FacebookPermission;->name:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/android/server/pm/FacebookPermission;->revoke:Z

    .line 24
    return-void
.end method
