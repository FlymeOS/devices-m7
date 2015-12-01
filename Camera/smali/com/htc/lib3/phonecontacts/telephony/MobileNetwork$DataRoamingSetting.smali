.class public Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public area:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

.field public generic:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

.field public national:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 745
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/a;

    invoke-direct {v0}, Lcom/htc/lib3/phonecontacts/telephony/a;-><init>()V

    sput-object v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    if-eqz p1, :cond_2

    .line 682
    instance-of v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v0, :cond_3

    .line 683
    check-cast p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;

    .line 684
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    if-eqz v0, :cond_0

    .line 685
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    iget-object v1, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    invoke-direct {v0, v1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    .line 687
    :cond_0
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    if-eqz v0, :cond_1

    .line 688
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    iget-object v1, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    invoke-direct {v0, v1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    .line 690
    :cond_1
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    if-eqz v0, :cond_2

    .line 691
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    iget-object v1, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    invoke-direct {v0, v1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    .line 722
    :cond_2
    :goto_0
    return-void

    .line 694
    :cond_3
    instance-of v0, p1, Landroid/os/Parcel;

    if-eqz v0, :cond_4

    .line 695
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 697
    new-instance v1, Ljava/io/CharArrayReader;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-static {v1, p0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;

    goto :goto_0

    .line 703
    :cond_4
    :try_start_0
    const-string v0, "generic"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_5

    .line 705
    new-instance v1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    invoke-direct {v1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 709
    :cond_5
    :goto_1
    :try_start_1
    const-string v0, "national"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_6

    .line 711
    new-instance v1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    invoke-direct {v1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 715
    :cond_6
    :goto_2
    :try_start_2
    const-string v0, "area"

    invoke-static {p1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 716
    if-eqz v0, :cond_2

    .line 717
    new-instance v1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    invoke-direct {v1, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    goto :goto_0

    .line 713
    :catch_1
    move-exception v0

    goto :goto_2

    .line 707
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static constructFromReader(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;
    .locals 1

    .prologue
    .line 793
    .line 794
    if-eqz p0, :cond_1

    .line 796
    :try_start_0
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    if-nez p1, :cond_0

    .line 798
    new-instance v0, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;

    invoke-direct {v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    move-object p1, v0

    .line 800
    :cond_0
    const/4 v0, 0x0

    # invokes: Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    invoke-static {p0, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->access$500(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    .line 801
    const/4 v0, 0x0

    # invokes: Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    invoke-static {p0, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->access$500(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    .line 802
    const/4 v0, 0x0

    # invokes: Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    invoke-static {p0, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->access$500(Ljava/io/CharArrayReader;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :cond_1
    :goto_0
    return-object p1

    .line 804
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 1

    .prologue
    .line 777
    if-eqz p1, :cond_0

    .line 778
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    # invokes: Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V
    invoke-static {p0, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V

    .line 779
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    # invokes: Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V
    invoke-static {p0, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V

    .line 780
    iget-object v0, p1, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;

    # invokes: Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V
    invoke-static {p0, v0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$Setting;)V

    .line 782
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 762
    if-eqz p1, :cond_0

    .line 763
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 764
    invoke-static {v0, p0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 765
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    :cond_0
    return-void
.end method
