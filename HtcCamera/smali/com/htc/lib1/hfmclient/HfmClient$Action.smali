.class Lcom/htc/lib1/hfmclient/HfmClient$Action;
.super Ljava/lang/Object;
.source "HfmClient.java"


# instance fields
.field private actionCode:I

.field private arg0:Lcom/htc/hfm/Speech;

.field private arg1:[Lcom/htc/hfm/Speech;

.field private arg2:[Lcom/htc/hfm/Speech;

.field private arg3:Z

.field private arg4:I


# direct methods
.method private constructor <init>(I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 225
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V

    .line 226
    return-void
.end method

.method private constructor <init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I

    .line 245
    iput-object p2, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg0:Lcom/htc/hfm/Speech;

    .line 246
    iput-object p3, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;

    .line 247
    iput-object p4, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg2:[Lcom/htc/hfm/Speech;

    .line 248
    iput-boolean p5, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg3:Z

    .line 249
    iput p6, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg4:I

    .line 250
    return-void
.end method

.method synthetic constructor <init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZILcom/htc/lib1/hfmclient/HfmClient$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct/range {p0 .. p6}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/htc/lib1/hfmclient/HfmClient$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/htc/lib1/hfmclient/HfmClient$Action;-><init>(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->actionCode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/lib1/hfmclient/HfmClient$Action;)[Lcom/htc/hfm/Speech;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/lib1/hfmclient/HfmClient$Action;)Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg3:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/lib1/hfmclient/HfmClient$Action;)[Lcom/htc/hfm/Speech;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg2:[Lcom/htc/hfm/Speech;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/lib1/hfmclient/HfmClient$Action;)I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$Action;->arg4:I

    return v0
.end method
