.class public interface abstract Lcom/htc/camera/ICpuController;
.super Ljava/lang/Object;
.source "ICpuController.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final PROPERTY_MINIMUM_CPU_COUNT:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_MINIMUM_CPU_FREQUENCY:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/ICpuController$CpuFrequency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "MinimumCpuCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/htc/camera/ICpuController;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ICpuController;->PROPERTY_MINIMUM_CPU_COUNT:Lcom/htc/camera/base/PropertyKey;

    .line 45
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "MinimumCpuFrequency"

    const-class v2, Lcom/htc/camera/ICpuController$CpuFrequency;

    const-class v3, Lcom/htc/camera/ICpuController;

    sget-object v4, Lcom/htc/camera/ICpuController$CpuFrequency;->LOWEST:Lcom/htc/camera/ICpuController$CpuFrequency;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/ICpuController;->PROPERTY_MINIMUM_CPU_FREQUENCY:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method
