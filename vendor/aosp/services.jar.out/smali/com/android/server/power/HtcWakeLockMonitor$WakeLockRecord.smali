.class final Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeLockRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private abnormal_count:I

.field private binderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I

.field private heldBeginTime:J

.field private heldDuration:[J

.field private final pid:I

.field private pkgName:Ljava/lang/String;

.field private pkgSize:I

.field private pkgVersion:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockMonitor;

.field private total_time:J

.field private final uid:I

.field private update_time:J


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 6
    .param p2, "_flags"    # I
    .param p3, "_tag"    # Ljava/lang/String;
    .param p4, "_uid"    # I
    .param p5, "_pid"    # I
    .param p6, "_binder"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 661
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    .line 651
    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->total_time:J

    .line 653
    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldBeginTime:J

    .line 656
    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I

    .line 657
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;

    .line 658
    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgVersion:Ljava/lang/String;

    .line 659
    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgSize:I

    .line 662
    iput p2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->flags:I

    .line 663
    iput-object p3, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;

    .line 664
    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->MY_UID:I
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2000(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v0

    if-ne p4, v0, :cond_0

    const/16 p4, 0x3e8

    .end local p4    # "_uid":I
    :cond_0
    iput p4, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I

    .line 665
    iput p5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pid:I

    .line 666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->update_time:J

    .line 667
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;[J)[J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    .param p1, "x1"    # [J

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    .param p1, "x1"    # I

    .prologue
    .line 644
    iput p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I

    return p1
.end method

.method static synthetic access$1608(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pid:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->update()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->saveHeldDuration()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->start(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->stop(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->info()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isAbnormal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->getPackageName()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isStart()Z

    move-result v0

    return v0
.end method

.method private getPackageName()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 784
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1400(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1400(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 787
    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;

    .line 788
    array-length v2, v1

    iput v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgSize:I

    .line 791
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1400(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 792
    .restart local v1    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "N/A"

    iput-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private info()Ljava/lang/String;
    .locals 5

    .prologue
    .line 800
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2700(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->flags:I

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->lockType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 803
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2700(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->flags:I

    invoke-interface {v1, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->lockType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 805
    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", acq_count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totaltime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->total_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 813
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", abnormal_count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pkg("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isAbnormal()Z
    .locals 2

    .prologue
    .line 689
    iget v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ABNORMAL_COUNT:I
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2100(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStart()Z
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveHeldDuration()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 699
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isAbnormal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J

    if-nez v5, :cond_2

    .line 705
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->MAX_SCREEN_OFF_COUNT:I
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2300(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J

    .line 708
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 711
    .local v2, "NOW":J
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isStart()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-wide v6, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldBeginTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v5

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$400(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 712
    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldBeginTime:J

    .line 713
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 714
    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveHeldDuration:("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldBeginTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    .end local v2    # "NOW":J
    :catch_0
    move-exception v4

    .line 735
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 736
    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveHeldDuration: held="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isStart()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mScreenState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 719
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "NOW":J
    :cond_3
    :try_start_1
    iget-wide v6, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldBeginTime:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isStart()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v5

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$400(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    :cond_4
    iget-wide v6, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldBeginTime:J

    sub-long v0, v2, v6

    .line 721
    .local v0, "HELD_DURATION":J
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldBeginTime:J

    .line 724
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2600(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v6

    aget-wide v8, v5, v6

    add-long/2addr v8, v0

    aput-wide v8, v5, v6

    .line 726
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 727
    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveHeldDuration: HELD_DURATION="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", heldDuration["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2600(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStampIndex:I
    invoke-static {v8}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2600(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v8

    aget-wide v8, v7, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", NOW="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private shouldMonitor()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 693
    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->UID_CHECK_RANGE:I
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2200(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private start(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    const/16 v3, 0x32

    .line 757
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 758
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Lock:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 759
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    const-string v2, " acquired, but unrelease locks over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 762
    const-string v2, ". Skip recording."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    const-string v2, "HtcWLM"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->update()V

    .line 767
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 768
    .local v0, "i":I
    if-gez v0, :cond_1

    .line 769
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->saveHeldDuration()V

    goto :goto_0
.end method

.method private stop(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->update()V

    .line 776
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 777
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->binderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 780
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->saveHeldDuration()V

    .line 781
    return-void
.end method

.method private update()V
    .locals 6

    .prologue
    .line 746
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 747
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->update_time:J

    sub-long v0, v2, v4

    .line 750
    .local v0, "elapsed":J
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isStart()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    iget-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->total_time:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->total_time:J

    .line 753
    :cond_0
    iput-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->update_time:J

    .line 754
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I
    .locals 4
    .param p1, "another"    # Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .prologue
    .line 673
    iget-wide v0, p1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->total_time:J

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->total_time:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 674
    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    .line 677
    :cond_0
    iget-wide v0, p1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->total_time:J

    iget-wide v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->total_time:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 678
    const/4 v0, 0x0

    goto :goto_0

    .line 681
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 644
    check-cast p1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->compareTo(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v0

    return v0
.end method
