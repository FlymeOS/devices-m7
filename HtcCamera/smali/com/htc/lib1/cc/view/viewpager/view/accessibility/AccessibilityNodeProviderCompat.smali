.class public Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# static fields
.field private static final IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/f;


# instance fields
.field private final mProvider:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/g;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/g;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/f;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/h;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/h;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/f;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;->IMPL:Lcom/htc/lib1/cc/view/viewpager/view/accessibility/f;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/f;->a(Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 112
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/lib1/cc/view/viewpager/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method
