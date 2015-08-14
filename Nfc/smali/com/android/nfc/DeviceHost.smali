.class public interface abstract Lcom/android/nfc/DeviceHost;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;,
        Lcom/android/nfc/DeviceHost$LlcpServerSocket;,
        Lcom/android/nfc/DeviceHost$LlcpSocket;,
        Lcom/android/nfc/DeviceHost$NfcDepEndpoint;,
        Lcom/android/nfc/DeviceHost$NfceeEndpoint;,
        Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;,
        Lcom/android/nfc/DeviceHost$TagEndpoint;,
        Lcom/android/nfc/DeviceHost$DeviceHostListener;
    }
.end annotation


# virtual methods
.method public abstract GetDefaultSE()I
.end method

.method public abstract JCOSDownload()I
.end method

.method public abstract PrbsOff()V
.end method

.method public abstract PrbsOn(II)V
.end method

.method public abstract SWPSelfTest(I)I
.end method

.method public abstract SetFilterTag(I)Z
.end method

.method public abstract SetScreenState(Z)Z
.end method

.method public abstract SetScrnState(I)Z
.end method

.method public abstract canMakeReadOnly(I)Z
.end method

.method public abstract checkFirmware()V
.end method

.method public abstract clearRouting()V
.end method

.method public abstract commitRouting()Z
.end method

.method public abstract createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract deinitialize()Z
.end method

.method public abstract disableDiscovery()V
.end method

.method public abstract disableRoutingToHost()V
.end method

.method public abstract disableScreenOffSuspend()Z
.end method

.method public abstract doAbort()V
.end method

.method public abstract doActivateLlcp()Z
.end method

.method public abstract doCheckLlcp()Z
.end method

.method public abstract doConfigureDesfireRoute(I)V
.end method

.method public abstract doDeselectSecureElement(I)V
.end method

.method public abstract doGetSecureElementList()[I
.end method

.method public abstract doGetSecureElementTechList()I
.end method

.method public abstract doPrbsOff()V
.end method

.method public abstract doPrbsOn(II)V
.end method

.method public abstract doSelectSecureElement(I)V
.end method

.method public abstract doSetEEPROM([B)V
.end method

.method public abstract doSetProperties(II)I
.end method

.method public abstract doSetSEPowerOffState(IZ)V
.end method

.method public abstract doSetScreenState(I)V
.end method

.method public abstract doSetSecureElementListenTechMask(I)V
.end method

.method public abstract doSetVenConfigValue(I)V
.end method

.method public abstract download()Z
.end method

.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
.end method

.method public abstract enableRoutingToHost()V
.end method

.method public abstract enableScreenOffSuspend()Z
.end method

.method public abstract getAidTableSize()I
.end method

.method public abstract getChipVer()I
.end method

.method public abstract getCodebaseVersion()I
.end method

.method public abstract getDefaultAidRoute()I
.end method

.method public abstract getDefaultDesfireRoute()I
.end method

.method public abstract getDefaultLlcpMiu()I
.end method

.method public abstract getDefaultLlcpRwSize()I
.end method

.method public abstract getDefaultMifareCLTRoute()I
.end method

.method public abstract getExtendedLengthApdusSupported()Z
.end method

.method public abstract getFWVersion()I
.end method

.method public abstract getMaxTransceiveLength(I)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSecureElementUid()[B
.end method

.method public abstract getTimeout(I)I
.end method

.method public abstract getWipeApdus()[[B
.end method

.method public abstract initialize()Z
.end method

.method public abstract resetTimeouts()V
.end method

.method public abstract routeAid([BII)Z
.end method

.method public abstract routeAidEx([BIIZ)Z
.end method

.method public abstract sendRawFrame([B)Z
.end method

.method public abstract setDefaultAidRoute(I)Z
.end method

.method public abstract setDefaultProtoRoute(III)V
.end method

.method public abstract setDefaultRoute(III)Z
.end method

.method public abstract setDefaultTechRoute(III)V
.end method

.method public abstract setEmvCoPollProfile(ZI)I
.end method

.method public abstract setP2pInitiatorModes(I)V
.end method

.method public abstract setP2pTargetModes(I)V
.end method

.method public abstract setTimeout(II)Z
.end method

.method public abstract swpTest()I
.end method

.method public abstract unrouteAid([BI)Z
.end method
