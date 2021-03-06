package org.ohmage.probemanager;

interface IProbeManager 
{

    /**
     * Registers the given tag with the application name.
     * All logs with the given tag will be recorded with the given
     * application name.
     * 
     * @param       observerId       Id of observer
     * @param       observerVersion  version of observer
     * @param       streamId         Id of stream for observer
     * @param       streamVersion    version of stream
     * @param       uploadPriority   upload priority (not used)
     * @param       metadata         metadata for point
     * @param       data             data for point
     * @return                       true if successfully received
     */
    boolean writeProbe (in String observerId, in int observerVersion, in String streamId, in int streamVersion, in int uploadPriority, in String metadata, in String data);

    /**
     * Registers the given tag with the application name.
     * All logs with the given tag will be recorded with the given
     * application name.
     * 
     * @param       campaignUrn                Unique identifier of campaign
     * @param       campaignCreationTimestamp  version of observer
     * @param       uploadPriority             upload priority (not used)
     * @param       data                       data for point
     * @return                                 true if successfully received
     */
    boolean writeResponse (in String campaignUrn, in String campaignCreationTimestamp, in int uploadPriority, in String data);

}
